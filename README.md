# Using the martile-plugin-rbbrs24 gem with the Martile gem

Example:

    require 'martile'
    require 'martile-plugin-rbbrs24'

    s = "
    <p>Hello World!</p>
    <rbbr>45 + 10</rbbr>
    <p>fizzer
    foo bar</p>
    <rbbr>
    puts 'hello world'
    e ='123'
    </rbbr>
    "

    m = Martile.new(s, plugins: {Rbbrs24: {action: 'runx'}}, debug: true)
    s2 = m.to_s
    puts s2

Output:
<pre>
&lt;p&gt;Hello World!&lt;/p&gt;

&lt;div class='code'&gt;
  &lt;form action="run" method="get" target="output"&gt;
    &lt;textarea autofocus="true" name="input1"&gt;45 + 10&lt;/textarea&gt;
    &lt;input type="submit" value="run"/&gt;
  &lt;/form&gt;
  &lt;iframe name="output" id="output"/&gt;  
&lt;/div&gt;

&lt;p&gt;fizzer
foo bar&lt;/p&gt;

&lt;div class='code'&gt;
  &lt;form action="run" method="get" target="output"&gt;
    &lt;textarea autofocus="true" name="input1"&gt;
puts 'hello world'
e ='123'
&lt;/textarea&gt;
    &lt;input type="submit" value="run"/&gt;
  &lt;/form&gt;
  &lt;iframe name="output" id="output"/&gt;  
&lt;/div&gt;
</pre>

martile plugin rbbrs24
