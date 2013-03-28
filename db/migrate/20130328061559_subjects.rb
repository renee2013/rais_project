class Subjects < ActiveRecord::Migration
  def self.up
     drop_table :subjects
	create_table :subjects do |t|
         t.string	:name
     end
     Subject.create :name => "Physics"
	Subject.create :name => "Math"
	Subject.create :name => "Chemistry"
	Subject.create :name => "psychology"
	Subject.create :name => "Geography"
  end

  def self.down
	drop_table :subjects
  end
end
