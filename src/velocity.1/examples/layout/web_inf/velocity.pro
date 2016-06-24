#*
 * Copyright 2003 The Apache Software Foundation.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * $Id: velocity.properties,v 1.2 2004/02/20 12:54:11 marino Exp $
 *#

#
# These are the default properties.  So, this file is essentially
# unnecessary here, but is included just to demonstrate that these
# can be changed.
#

# Filepath for error template, relative to web application root directory
tools.view.servlet.error.template = Error.vm

# Directory for layout templates, relative to web application root directory
tools.view.servlet.layout.directory = layout/

# Filepath of the default layout template
# relative to the layout directory
# NOT relative to the root directory of the webapp!
tools.view.servlet.layout.default.template =  Default.vm
