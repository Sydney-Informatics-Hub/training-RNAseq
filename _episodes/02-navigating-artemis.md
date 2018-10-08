---
title: "Navigating Artemis"
teaching: 10
exercises: 0
questions:
- "How is Artemis HPC organised?"
objectives:
- "Learn how to navigate Artemis' filesystem."
- "Find out what software is available on Artemis"
- "Learn how to write script files."
keypoints:
- "Storage on Artemis is arranged by _project_, which corresponds to a single RDMP."
- "There are 3 key branches of the Artemis filesystem: **/project**, **/scratch** and **/home**"
- "Software is managed by the 'Environment Modules' package, and must be loaded before use."
---
This episode gets users familiar with the Artemis servers, available software and directory structure. It also introduces users to text editors on Artemis for scripting.

# The Artemis directory structure

<br>
## When you first arrive

At the end of last lesson we logged on to Artemis, and were presented with a command prompt in a terminal window. The last line in that window would look something like this:

<figure>
  <img src="/fig/02_landing.png" style="margin:10px;height:150px"/>
  <figcaption> Command prompt on Artemis, using X-Win32 </figcaption>
</figure><br>


The **command prompt**, which is where in the terminal you type your commands, ends with a **$** dollar sign. Before that is some text, in the form of ```[username @ host current_directory ]```. In the screencap above, the username is **ict_hpctrain1**, the host server that we have logged into is **'login3'** (the 3rd Artemis login node), and our current cirectory is **~**, which is a shortcode for the user's 'home' directory.

Even though no files are visible or listed in the terminal window, the command prompt is always 'located' at a specific place in the filesystem -- we can print that location to the window with the ```pwd``` (_print working directory_) command. Type it and press 'enter':

~~~
[ict_hpctrain1@login3 ~]$ pwd
~~~
{: .bash}

The output should look something like this (if your username is **ict_hpctrain1**):

~~~
/home/ict_hpctrain1
~~~
{: .output}

This is your **home** directory. Every user on Artemis (and any Linux system) has a home directory located at ```/home/<username>```. Your username may be your Unikey, or it may be the training accounts we're using today. Every time you log in to Artemis, this is where you'll end up: home. :blush:

<br>
> ## Directions for the student
>
> In these courses, **<font color="#6e5494">purple</font>** coloured block-quotes as above indicate commands that you need to _enter_ into your command prompt.
>
> **Black** coloured block-quotes indicate _output_ you should expect as a result.)
{: .callout}

<br>
<h2 data-toc-text="Artemis' 3 main directories">The three branches of the Artemis tree</h2>

<figure>
  <img src="/fig/02_arttree.png" style="margin:10px"/>
  <figcaption> Artemis filesystem structure </figcaption>
</figure><br>

The Artemis filesystem has three main branches: **/home**, **/project**, and **/scratch**. We have just met **/home**. The **root** folder of the filesystem is signified by a single forward-slash **/**; and so every other location, which is a subfolder of the root, must also begin with this slash. This it why 'home' is located at ```/home```. (If this is all new to you, then you probably haven't taken the [Intro to Unix](https://intersect.org.au/training/course/unix/) prerequisite course. You should do that ASAP).

### i. /home

**/home** is where your data is. But not your _project_ data, just your own personal data. If you have any project-related data that needs to remain _private_ to you alone then also keep that in **/home**, as only you can see or read files in your home directory. Home directories are allocated **10 GB** of storage only.

### iii. /project

The **/project** branch is where researchers on a project should keep all the data and programs or scripts that are _currently_ being used. We say 'currently' because project directories are allocated only **1 TB** of storage space -- that may sound like a lot, but this space is shared between all users of your project, and it runs out faster than you think. Data that you're not currently working on should be deleted or moved back to its permanent storage location (which should be the Research Data Store<sup id="a1">[1](#f1)</sup>).

This also means that everyone working on your project can see all files in the project directory by default.<sup id="a2">[2](#f2)</sup>

Project directories are all subfolders of **/project**, and will have names like

~~~
/project/RDS-CORE-Training-RW
~~~
{: .output}

which take the form ```/RDS-<Faculty>-<Short_name>-RW```. In the case above, 'Training' is the project name and 'CORE' stands for Core Research Facilities.

If you forget what your projects are called, you can always check to see which **user groups** (which include projects) you are a member of, using the ```groups``` command:

~~~
[ict_hpctrain1@login3 ~]$ groups
~~~
{: .bash}

~~~
[ict_hpctrain1@login1 ~]$ groups
linuxusers HPC-ACL RDS-ICT-HPCTRAINING-RW RDN-USERS RDN-CORE-Training RDS-CORE-Training-RW RDN-CORE-SIHsandbox RDS-CORE-SIHsandbox-RW
~~~
{: .output}

Note that this user ```ict_hpctrain1``` is a member of the ```RDS-ICT-HPCTRAINING-RW``` and ```RDS-CORE-Training-RW``` and ```RDS-CORE-SIHsandbox-RW``` projects.

The middle part of the **project name** is also called the _**short name**_, and was chosen by whomever applied for the **RDMP** (Research Data Management Plan) that defines the project. The full folder name ```/RDS-<Faculty>-<Short_name>-RW``` is technically the actual project name as known to Artemis, however the _short names_ can be used throughout Artemis instead.

So, for example, change into the project directory of the 'Training' project with the _change directory_ command ```cd```:

~~~
[ict_hpctrain1@login3 ~]$ cd /project/Training
[ict_hpctrain1@login1 Training]$ pwd
~~~
{: .bash}

~~~
/project/Training
~~~
{: .output}


### iii. /scratch



## Writing script files

### Text editors

### i. Nano


<br>   

___
**Notes**   
<sup id="f1">1[↩](#a1)</sup> The Research Data Store (RDS) is covered in the 2nd lesson of this series, [Introduction to the Research Data Store and Data Transfer](https://pages.github.sydney.edu.au/informatics/training.artemis.rds).

<sup id="f2">2[↩](#a2)</sup> There are ways to change the user permissions of files and folders in Linux, but we won't cover that here. Don't try it unless you know what you're doing!

___
<br>
