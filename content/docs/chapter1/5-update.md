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

You can use the `tidymass` to check the version of all packages and update them.

If you want to check if there are updates for `tidymass` and packages in it. Just check it like this.


```r
tidyicrobiome::check_tidyicrobiome_version()
```

## Update `tidymass`

The update_tidymass() function can be used to update tidymass and packages within it.


```r
tidymass::update_tidymass(from = "gitlab")
```

> If the from = "gitlab" doesn’t work, try set it as from = "github" or from = "gitee".
