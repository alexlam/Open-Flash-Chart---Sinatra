# Code for generating chart info 
#
# 


def single_bars
    
    input = [1,2,3,4,5,6,7,8,9,10]
 
    title = Title.new("Chart")
    bar = BarGlass.new
    bar.set_values(input)

    x_legend = XLegend.new("X Legend")
    x_legend.set_style("{font-size: 14px; color: #89C33E}")
    y_legend = YLegend.new("Y Legend")
    y_legend.set_style("{font-size: 20px; color: #89C33E}")

 
    x_axis = XAxis.new

    xlabels = XAxisLabels.new
    xlabels.labels = ["one", "two", "three", "four", "five", 
                     "six", "seven", "eight", "nine", "ten"]
    
    x_axis.labels = xlabels

    @chart = OpenFlashChart::Base.new
    @chart.set_title(title)
    @chart.add_element(bar)
    @chart.x_axis = x_axis

end

