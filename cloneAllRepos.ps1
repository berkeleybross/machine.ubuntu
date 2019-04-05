#!/usr/bin/env pwsh

If(!(test-path ~/git/PeregrineDb))
{
    git clone https://github.com/berkeleybross/PeregrineDb ~/git/PeregrineDb
}
