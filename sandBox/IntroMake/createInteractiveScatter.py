import altair as alt
from vega_datasets import data
#This is a comment, I changed the file!!
source = data.cars()

chart = alt.Chart(source).mark_circle(size=60).encode(
    x='Horsepower',
    y='Miles_per_Gallon',
    color='Origin',
    tooltip=['Name', 'Origin', 'Horsepower', 'Miles_per_Gallon']
).interactive()

chart.save('testScatter.html')

