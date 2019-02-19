R markdown template for Maelstrom Research [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
------------------------------------------------------------------------------------------------------------------------------------------------------

### Installation

``` r
devtools::install_github("maelstrom-research/maelstromrmd")
```

### Use

Get an HTML from your Rmd document by specifying the following `output` parameter in your `yaml`:

``` yaml
output: maelstromrmd::MRHTML
```
