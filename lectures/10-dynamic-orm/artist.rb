class Artist
  attr_accessor :id, :name
  def self.all
    query = <<-SQL
      SELECT *
      FROM #{table_name}
    SQL

    connection.execute(query).map do |row|
      new_from_row(row)
    end
  end

  def self.find(id)
    query = <<-SQL
      SELECT *
      FROM #{table_name}
      WHERE id = ?
      LIMIT 1
    SQL

    connection.execute(query,id).map do |row|
      new_from_row(row)
    end.first
  end

  def self.new_from_row(row)
    instance = new
    instance.id = row["id"]
    instance.name = row["name"]
    instance
  end

  def self.table_name
    self.class.to_s.downcase + 's'
  end

  def self.columns
    connection.table_info(table_name).map{|column| column["name"]}
  end

  def self.connection
    @@connection ||= begin
                       c = SQLite::Database.new("db/development.db")
                       c.results_as_hash
                       c
                     end
  end
  private_class_method :connection

  def save
    persisted? ? update : insert
  end

  private

  def update
    query = <<-SQL
      UPDATE self.class.table_name
      SET #{properties_for_update}
      WHERE id=?
    SQL

    connection.execute(query, id)
  end

  def properties_for_update
    self.class.columns.map do |column|
      "#{column}=#{value_for(column)}"
    end
  end

  def value_for(column)
    public_send(column)
  end
end
