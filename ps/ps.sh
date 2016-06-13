#!/bin/bash

# 批量结束xxx命令
ps aux| grep xxx | cut -c 3-15 | xargs kill -9 