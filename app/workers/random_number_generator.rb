class RandomNumberGenerator

  @queue = :random_number_generator_queue
  def self.perform(race_id)
    race = Race.find(race_id)
    until race.winner
      # Sleeping to slow down the appearance of the numbers.
      sleep 0.5
      r = Random.new
      random_number = r.rand(10) + 1
      number = Number.create( :number      => random_number.to_s,
                              :active_race => true,
                              :race_id     => race.id )
      number_count = Number.where('number = ? AND active_race = true', random_number).count
      if number_count == 10
        race.winner = random_number
        race.save
        this_races_numbers = Number.where('race_id = ?', race.id)
        this_races_numbers.each do |number|
          number.active_race = false
          number.save
        end
        return
      end
    end
  end

end