require_relative('../db/sql_runner.rb')

class Casting
  attr_reader :id
  attr_accessor :fee, :movie_id, :star_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @fee = options['fee']
    @movie_id = options['movie_id'].to_i if options['movie_id']
    @star_id = options['star_id'].to_i if options['star_id']
  end

  def save()
    sql = "INSERT INTO castings
    (fee, movie_id, star_id)
    VALUES
    ($1, $2, $3)
    RETURNING id"
    values = [@fee, @movie_id, @star_id]
    casting = SqlRunner.run(sql, values).first
    return @id = casting['id'].to_i
  end

  def update()
  end

  def delete()
  end

  def self.all()
    sql = "SELECT * FROM castings"
    values = []
    returned_array = SqlRunner.run(sql, values)
    result = returned_array.map {|casting| Casting.new(casting)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM castings"
    values = []
    SqlRunner.run(sql, values)
  end

end
