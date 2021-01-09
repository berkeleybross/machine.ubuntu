#!/usr/bin/env pwsh

If(!(test-path ~/git/PeregrineDb))
{
    git clone https://github.com/berkeleybross/PeregrineDb ~/git/PeregrineDb
}

If(!(test-path ~/git/nuxt.js))
{
    git clone https://github.com/berkeleybross/nuxt.js ~/git/nuxt.js
}