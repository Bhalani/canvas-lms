#
# Copyright (C) 2016 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class AddMetadataUriToAuthenticationProviders < ActiveRecord::Migration[4.2]
  tag :predeploy

  def change
    add_column :account_authorization_configs, :metadata_uri, :string
    add_index :account_authorization_configs, :metadata_uri, where: "metadata_uri IS NOT NULL"
  end
end
