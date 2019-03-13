R markdown template for Maelstrom Research [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
------------------------------------------------------------------------------------------------------------------------------------------------------

### Installation

``` r
devtools::install_github("maelstrom-research/maelstromrmd")
```

Or the "other version", `hidden_code`, based on `rmdformats`:

``` r
devtools::install_github("maelstrom-research/maelstromrmd", ref = "hidden_code")
```

### Use

Get an HTML from your Rmd document by specifying the following `output` parameter in your `yaml`:

``` yaml
output: maelstromrmd::MRHTML
```
