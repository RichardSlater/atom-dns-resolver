# Copyright 2016 Richard Slater
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"use strict"

Logger = require '../lib/simple-logging'

describe "SimpleLogging", ->
  [panel] = []
  it "attaches to the atom viewport when init is called", ->
    waitsFor "new panel to be added", ->
      logger = new Logger()
      logger.init('DNS Resolver')
      panel = atom.workspace.getBottomPanels()[0]
    runs ->
      expect(panel.item.title).toBe('DNS Resolver')
