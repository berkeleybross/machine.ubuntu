#!/usr/bin/env pwsh

If(!(test-path ~/sources/easy-gesture))
{
    git clone https://github.com/berkeleybross/easy-gesture ~/sources/easy-gesture
}
