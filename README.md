# *An Inquiry-Based Introduction to Linear Algebra and Applications*

## Accessibility Statement

In creating this PreTeXt version we (the authors and the Grand Valley State University Libraries) strive to ensure our tools, devices, services, and environments are available to and usable by as many people as possible.

The web version of *An Inquiry-Based Introduction to Linear Algebra and Applications* incorporates the following features to support accessibility:

* All content can be navigated by use of a keyboard
* Links, headings, and tables have been designed to work with screen readers
*  Mathematics in PreTeXt are rendered with MathJax so they can be understood by people using screen readers and/or other assistive devices.

We have identified some accessibility issues which were beyond the author's and GVSU Libraries' capacity to address in the course of this adaptation. These present an opportunity for future adaptation or revision by educators with expertise in accessibility issues in mathematics documents. Known accessibility issues include:

* A small number of exercises and activities in this text require students to visually interpret diagrams or figures. These activities cannot be made accessible through alt text alone, and may need to be redesigned or replaced for full accessibility.
* Some visual representations of concepts (see, for example, [Section 17](https://gvsuoer.github.io/linalg-applications/chap_determinants.html)) are not accessible to screen readers. However, they are fully described in text.
*  The matrix table represented in [Section 29](https://gvsuoer.github.io/linalg-applications/chap_SVD.html) is too complex to encode with the current functionality of PreTeXt and MathJax. It is presented as an image and is not accessible to screen readers. Full accessibility likely requires redesigning the project or waiting for expanded features in PreTeXt and MathJax.

We are always looking for how we can make our resources more accessible. If you are having problems accessing this resource, please [contact us by email](mailto:oer@gvsu.edu) to let us know.

## Acknowledgements

The many beautiful images that are in this text were created by our colleague David Austin, to whom we owe a debt of gratitude. The original LaTeX version of the book was partially supported by Grand Valley State University through an internal grant and a sabbatical.

The HTML version of the text is possible because of the work of Rob Beezer and the PreTeXt team for the development of the PreTeXt platform. David Farmer at the American Institute of Mathematics provided an initial PreTeXt conversion. From this version, Ian Curtis, Editorial Assistant for the GVSU Libraries, as part of the [Accelerating Open Educational Resources Initiative at Grand Valley State University](https://www.gvsu.edu/library/sc/AcceleratingOER), invested a significant amount of time and effort to create the PreTeXt version that you see. This work was conducted with support from the University Libraries and the GVSU President's Innovation Fund.

The code used to generate this book can be found in this repository. This includes the PreTeXt XML files, figures, customization files (XSL and CSS), and the output (HTML and PDF). Contributors are encouraged to submit an issue or a pull request with changes, especially regarding accessibility (as mentioned below in the Accessibility Statement).

## Compilation Instructions

To edit the files used to compile this book, we recommend [following the instructions](http://math.oscarlevin.com/2021/07/13/new-pretext-tutorial.html) from Oscar Levin, University of Northern Colorado.

Essentially, you will need a text editor, such as Visual Studio Code, Python, and LaTeX. After properly installing the necessary software, you may use the command line to install the PreTeXt-CLI through `pip install pretextbook`. Then familarize yourself with PreTeXt with

```
pretext new book
```

You may clone this repository by clicking on the green "Code" button above and copying the `HTTPS` url. Then,

```
git clone <HTTPS-url-you-just-copied>
cd linalg-applications
```

Edit the files you would like to, then submit a pull request. Alternatively, you can submit an issue (the issues tab at the top of this page) so we, the authors, and other developers may address it.