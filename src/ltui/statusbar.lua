--!A cross-platform build utility based on Lua
--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- 
-- Copyright (C) 2015 - 2018, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        statusbar.lua
--

-- load modules
local log       = require("ltui/base/log")
local rect      = require("ltui/rect")
local panel     = require("ltui/panel")
local label     = require("ltui/label")
local event     = require("ltui/event")
local curses    = require("ltui/curses")

-- define module
local statusbar = statusbar or panel()

-- init statusbar
function statusbar:init(name, bounds)

    -- init panel
    panel.init(self, name, bounds)

    -- init info
    self._INFO = label:new("statusbar.info", rect{0, 0, self:width(), self:height()})
    self:insert(self:info())
    self:info():text_set("Status Bar")
    self:info():textattr_set("blue")

    -- init background
    self:background_set("white")
end

-- get status info
function statusbar:info()
    return self._INFO
end

-- return module
return statusbar
