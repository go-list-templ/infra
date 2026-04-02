# Disable Titl analytics
analytics_settings(enable=False)

# Disable Tilt redacted secret
secret_settings(disable_scrub=True)

# Load Tilt extensions (https://github.com/tilt-dev/tilt-extensions)
load('ext://restart_process', 'docker_build_with_restart')

# Check if Kubernetes context is set to docker-desktop
if k8s_context() != 'kind-microservices':
    fail('Kubernetes context is not set to docker-desktop')

# Tiltfile

load('ext://git_resource', 'git_resource')

default_registry("tilt.dev")
local_registry("tilt.dev")

git_resource(
  name='users-service',
  url='https://github.com/go-list-templ/users-service.git',
  path='services/users',
)

git_resource(
  name='sso-service',
  url='https://github.com/go-list-templ/sso-service.git',
  path='services/sso',
)

k8s_yaml([
  'k8s/postgres.yaml',
  'k8s/redis.yaml',
  'k8s/mongodb.yaml',
  'k8s/otel-collector.yaml',
])

k8s_resource('postgres', labels=['database'], port_forwards=['5432:5432'])
k8s_resource('redis', labels=['cache'], port_forwards=['6379:6379'])
k8s_resource('mongodb', labels=['database'], port_forwards=['27017:27017'])
k8s_resource('otel-collector', labels=['observability'], port_forwards=['4317:4317', '3000:3000'])

service_dirs = [
  'services/users',
  'services/sso',
]

for path in service_dirs:
  if os.path.exists(path):
    include(path + '/Tiltfile')