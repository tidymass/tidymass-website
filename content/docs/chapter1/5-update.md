---
date: "2019-05-05T00:00:00+01:00"
title: "Update"
linktitle: Update
author: admin
type: book
weight: 5
commentable: true
---



## Check version

You can use the `tidymicrobiome` to check the version of all packages and update them.

If you want to check if there are updates for `tidymicrobiome` and packages in it. Just check it like this.


```r
tidyicrobiome::check_tidyicrobiome_version()
```

## Update `tidymicrobiome`

The update_tidymicrobiome() function can be used to update tidymicrobiome and packages in it.


```r
tidymass::update_tidymass(from = "gitlab")
```

> If the from = "gitlab" doesn’t work, try set it as from = "github" or from = "gitee".
