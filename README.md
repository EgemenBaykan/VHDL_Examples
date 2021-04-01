<h1> VHDL Examples </h1>

<h3>Why This Repo?</h3>

<p> This repo aims to help you with your very first VHDL codes and digital designs. There are also many sources on internet, especially for spesific projects such as VGA drive, 7 segment displays and even for RISC based microcontroller/processor architectures. </p>

<h3> Which Programs Are Used? </h3>

<p> As text editor Visual Studio Code and for simulations ModelSim are used in this repo. Please check the links below to see how to download Visual Studio Code and ModelSim. </p>

<ul>
    <li> <a href="https://www.youtube.com/watch?v=1AnXVuSm90c&t=15s" target="_blank">ModelSim Download Tutorial on YouTube</a> </li>
    <li> <a href="https://www.youtube.com/watch?v=9mpRF6bAY1g" target="_blank">ModelSim Tutorial on YouTube</a> </li>
    <li> <a href="https://code.visualstudio.com/download" target="_blank">Visual Studio code Download Link</a> </li>
</ul>

<p> Note #1: If you already have any IDE or programs to run your code, these installations are not important. You can also try these codes on your IDE. </p>
<p> Note #2: Also "Modern VHDL" extension pack is used for writing VHDL code easier. After installation, you also can download and install by searching it in extension packs tab in VSCode. </p>
<p> Note #3: For MAC users also there are GHDL and GTKWave programs.</p>

<h2> How To?</h2>

<p> Basically, you can open files with ".mpf" extensions on ModelSim and compile the code. Testbenches are named as "_CodeName_tb.vhd". Start simulation on a testbench, add your waves to simulation and run within dedicated time on the tab on top of the program. A simulation of RAM code is shown below: </p>

<img src="repo_ss.png" alt="RAM simulation" style="width:500px;height:300px;">

<h3> How To Create A New Project On ModelSim? </h3>

<ol>
    <li> Go to File > New > Project. </li>
    <li> Enter your project name. </li>
    <li> Choose your project location path. </li>
    <li> Click OK and choose "Add Existing Files".</li>
    <li> Add your design and testbench. </li>
    <li> Click OK. Your project is created.</li>
</ol>

<h3> How To Simulate Your Code On ModelSim?</h3>

<p> Simulation process differs from project to project. However, most basic logic is processed in this manual.</p>

<ol>
    <li> Go to Compile > Compile All. This compiles your VHDL codes included in your project.</li>
    
    If compile is successful, continue with simulation part:
    
    <li> Go to Simulate > Start Simulation. A new window will pop up.</li>
    <li> Under "work" directory, choose your testbench file and click OK.</li>
    <li> On left panel, under "sim" layout, right click on your unit under test (UUT).</li>
    <li> Click Add Waves. All objects will be displayed on "Wave" layout. </li>
    <li> On the tab, click "Run". This process runs your simulation in dedicated time near Run button.</li>
</ol>

