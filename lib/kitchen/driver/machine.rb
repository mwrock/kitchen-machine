# -*- encoding: utf-8 -*-
#
# Author:: Matt Wrock (<matt@mattwrock.com>)

# Copyright (C) 2016, Matt Wrock

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#    http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'kitchen'
require 'kitchen/driver/machine_version'

module Kitchen
  module Driver
    # Machine driver for Kitchen.
    class Machine < Kitchen::Driver::Base
      kitchen_driver_api_version 2

      plugin_version Kitchen::Driver::MACHINE_VERSION

      default_config :hostname, 'localhost'

      default_config(:port) do |driver|
        driver.instance.transport.name.downcase =~ /win_?rm/ ? 5985 : 22
      end

      default_config :username, 'vagrant'

      default_config :password, 'vagrant'

      # Creates a instance.
      #
      # @param state [Hash] mutable instance state
      # @raise [ActionFailed] if the action could not be completed
      def create(state)
        update_state(state)
        instance.transport.connection(state).wait_until_ready
        info("Machine instance #{instance.to_str} ready.")
      end

      # Destroys an instance.
      #
      # @param state [Hash] mutable instance state
      # @raise [ActionFailed] if the action could not be completed
      def destroy(state)
        instance.transport.connection(state).close
        state.delete(:hostname)
      end

      protected

      # Updates any state after creation.
      #
      # @param state [Hash] mutable instance state
      # @api private
      def update_state(state)
        state[:hostname] = config[:hostname]
        state[:port] = config[:port]
        state[:username] = config[:username]
        state[:password] = config[:password]
      end
    end
  end
end
