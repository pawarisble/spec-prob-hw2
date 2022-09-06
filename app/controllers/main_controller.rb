class MainController < ApplicationController
  def test
    @amount = params[:amount].to_i
    @emptyLine = params[:emptyLine]
  end
  
  def test2
  end
  
  def test3
    @subArray = params[:subArray]
    @scoreArray = params[:scoreArray]
    @MT_line = []

    for i in 1..@subArray.length() 
      if(@subArray[i-1] == ""|| @scoreArray[i-1] == "" ) 
        @MT_line.push(i)
      end
    end
    
    
    if(@MT_line.length() > 0 )
      redirect_to("/main/test/?amount=#{@subArray.length()}&emptyLine=#{@MT_line}")
    end

    @maxScore = @scoreArray[0].to_i
    @maxSub = @subArray[0]
    @sumScore = @scoreArray[0].to_i

    for i in 1..@subArray.length()

      @sumScore += @scoreArray[i].to_i
      if(@scoreArray[i].to_i > @maxScore)
        @maxScore = @scoreArray[i].to_i
        @maxSub = @subArray[i]
      end
    end

    if(@MT_line.length() == 0 )
      render plain: "MAX Subect :  " +@maxSub +"    Sum Score : " +@sumScore.to_s
    end
    
  end

end
