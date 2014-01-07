class OrangeTree
  
  def initialize
    @age = 0
    @height = 0
    @production = 0
    @fruit = 0
    @picked = 0
  end
  
  #ages tree one year
  def one_year_passes
    @age = @age + 1
    @picked =  0
    if @age > 25
      @age = dead
    else
      produce_fruit
      height
      @age
    end
  end
  
  def height
    @height = @age + 14
  end
  
  def produce_fruit
    if @age < 3
      @production = 0
    else
      @production = @age * 2
    end
  end
  
  def count_the_oranges
    @orange_count = @production - @picked
  end
  
  def pick_an_orange
    @picked = @picked + 1
    count_the_oranges
    if @orange_count > 0
      puts "This is a delicous orange"
    else
      puts "There are no more oranges this year."
    end
  end
  
end
  
tree = OrangeTree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange