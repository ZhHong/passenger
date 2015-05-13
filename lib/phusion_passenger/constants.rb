#  Phusion Passenger - https://www.phusionpassenger.com/
#  Copyright (c) 2010-2015 Phusion
#
#  "Phusion Passenger" is a trademark of Hongli Lai & Ninh Bui.
#
#  See LICENSE file for license information.

module PhusionPassenger
  UNION_STATION_CORE          = "UNION_STATION_CORE".freeze
  UNION_STATION_REQUEST_TRANSACTION = "UNION_STATION_REQUEST_TRANSACTION".freeze
  PASSENGER_TXN_ID            = "PASSENGER_TXN_ID".freeze
  PASSENGER_APP_GROUP_NAME    = "PASSENGER_APP_GROUP_NAME".freeze
  PASSENGER_UNION_STATION_KEY = "UNION_STATION_KEY".freeze
  RACK_HIJACK_IO              = "rack.hijack_io".freeze

  LVL_CRIT   = 0
  LVL_ERROR  = 1
  LVL_WARN   = 2
  LVL_NOTICE = 3
  LVL_INFO   = 4
  LVL_DEBUG  = 5
  LVL_DEBUG2 = 6
  LVL_DEBUG3 = 7

  # Constants shared between the C++ and Ruby codebase. The C++ Constants.h
  # is automatically generated by the build system from the following
  # definitions.
  module SharedConstants
    # Default config values
    DEFAULT_LOG_LEVEL = 3
    DEFAULT_RUBY = "ruby"
    DEFAULT_PYTHON = "python"
    DEFAULT_NODEJS = "node"
    DEFAULT_MAX_POOL_SIZE = 6
    DEFAULT_POOL_IDLE_TIME = 300
    DEFAULT_START_TIMEOUT = 90_000
    DEFAULT_WEB_APP_USER = "nobody"
    DEFAULT_APP_ENV = "production"
    DEFAULT_SPAWN_METHOD = "smart"
    DEFAULT_USER = "nobody"
    DEFAULT_CONCURRENCY_MODEL = "process"
    DEFAULT_STICKY_SESSIONS_COOKIE_NAME = "_passenger_route"
    DEFAULT_APP_THREAD_COUNT = 1
    DEFAULT_RESPONSE_BUFFER_HIGH_WATERMARK = 1024 * 1024 * 128
    DEFAULT_STAT_THROTTLE_RATE = 10
    DEFAULT_ANALYTICS_LOG_USER = DEFAULT_WEB_APP_USER
    DEFAULT_ANALYTICS_LOG_GROUP = ""
    DEFAULT_ANALYTICS_LOG_PERMISSIONS = "u=rwx,g=rx,o=rx"
    DEFAULT_UNION_STATION_GATEWAY_ADDRESS = "gateway.unionstationapp.com"
    DEFAULT_UNION_STATION_GATEWAY_PORT = 443
    DEFAULT_HTTP_SERVER_LISTEN_ADDRESS = "tcp://127.0.0.1:3000"
    DEFAULT_LOGGING_AGENT_LISTEN_ADDRESS = "tcp://127.0.0.1:9344"
    DEFAULT_LOGGING_AGENT_ADMIN_LISTEN_ADDRESS = "tcp://127.0.0.1:9345"

    # Size limits
    MESSAGE_SERVER_MAX_USERNAME_SIZE = 100
    MESSAGE_SERVER_MAX_PASSWORD_SIZE = 100
    POOL_HELPER_THREAD_STACK_SIZE = 1024 * 256
    DEFAULT_MBUF_CHUNK_SIZE = 16 * 32
    DEFAULT_FILE_BUFFERED_CHANNEL_THRESHOLD = 1024 * 128
    SERVER_KIT_MAX_SERVER_ENDPOINTS = 4

    # Time limits
    PROCESS_SHUTDOWN_TIMEOUT = 60 # In seconds
    PROCESS_SHUTDOWN_TIMEOUT_DISPLAY = "1 minute"

    # Versions
    PASSENGER_VERSION = PhusionPassenger::VERSION_STRING
    SERVER_INSTANCE_DIR_STRUCTURE_MAJOR_VERSION = 2
    SERVER_INSTANCE_DIR_STRUCTURE_MINOR_VERSION = 0

    # Misc
    FEEDBACK_FD = 3
    PROGRAM_NAME = "Phusion Passenger"
    SHORT_PROGRAM_NAME = "Passenger"
    SERVER_TOKEN_NAME = "Phusion_Passenger"
    FLYING_PASSENGER_NAME = "Flying Passenger"
    INDEX_DOC_URL       = "https://www.phusionpassenger.com/documentation/Users%20guide.html"
    APACHE2_DOC_URL     = "https://www.phusionpassenger.com/documentation/Users%20guide%20Apache.html"
    NGINX_DOC_URL       = "https://www.phusionpassenger.com/documentation/Users%20guide%20Nginx.html"
    STANDALONE_DOC_URL  = "https://www.phusionpassenger.com/documentation/Users%20guide%20Standalone.html"
    SUPPORT_URL         = "https://www.phusionpassenger.com/documentation_and_support"
    ENTERPRISE_URL      = "https://www.phusionpassenger.com/enterprise"
    GLOBAL_NAMESPACE_DIRNAME            = PhusionPassenger::GLOBAL_NAMESPACE_DIRNAME_
    # Subdirectory under $HOME to use for storing stuff.
    USER_NAMESPACE_DIRNAME              = PhusionPassenger::USER_NAMESPACE_DIRNAME_
    AGENT_EXE                 = "PassengerAgent"
    DEB_MAIN_PACKAGE          = "passenger-enterprise"
    DEB_DEV_PACKAGE           = "passenger-enterprise-dev"
    DEB_APACHE_MODULE_PACKAGE = "libapache2-mod-passenger-enterprise"
    DEB_NGINX_PACKAGE         = "nginx-extras"
    RPM_MAIN_PACKAGE          = "passenger-enterprise"
    RPM_DEV_PACKAGE           = "passenger-enterprise-devel"
    RPM_APACHE_MODULE_PACKAGE = "mod_passenger_enterprise"
    RPM_NGINX_PACKAGE         = "nginx"
    STANDALONE_NGINX_CONFIGURE_OPTIONS =
      "--with-cc-opt='-Wno-error' " <<
      "--without-http_fastcgi_module " <<
      "--without-http_scgi_module " <<
      "--without-http_uwsgi_module " <<
      "--with-http_gzip_static_module " <<
      "--with-http_stub_status_module " <<
      "--with-http_ssl_module"
    PASSENGER_IS_ENTERPRISE = 1
  end

  SharedConstants.constants.each do |name|
    const_set(name, SharedConstants.const_get(name)) unless const_defined? name
  end
end
