require_relative('../db/sql_runner.rb')

class Star
  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save()
    sql = "INSERT INTO stars
    (first_name, last_name)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@first_name, @last_name]
    star = SqlRunner.run(sql, values).first
    return @id = star['id'].to_i
  end

  def update()
  end

  def delete()
  end

  def self.all()
    sql = "SELECT * FROM stars"
    values = []
    returned_array = SqlRunner.run(sql, values)
    result = returned_array.map{|star| Star.new(star)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM stars"
    values = []
    SqlRunner.run(sql, values)
  end

end
