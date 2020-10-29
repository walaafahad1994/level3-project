res-init:
	kubectl create namespace test 
res-pre:
	kubectl create -f ./front-end/sa.yaml -f  ./front-end/role-bind.yaml -n test
secret-dockerhup:
	docker login
	kubectl create secret generic walaa-secret \
	 --from-file=.dockerconfigjson=/home/ubuntu/.docker/config.json \
 	--type=kubernetes.io/dockerconfigjson -n test

ins-front-end:
	kubectl create -f ./front-end/piperes.yaml -f ./front-end/task1front.yaml \
	-f ./front-end/task1frontend.yaml -f ./front-end/taskdepoy.yaml -f ./front-end/taskdeprun.yaml -f ./front-end/pipeline.yaml \
	-f ./front-end/pipelinerun.yaml -n test
delete-front-end:
	kubectl delete -f ./front-end/piperes.yaml -f ./front-end/task1front.yaml \
	-f ./front-end/task1frontend.yaml -f ./front-end/taskdepoy.yaml -f ./front-end/taskdeprun.yaml -f ./front-end/pipeline.yaml \
	-f ./front-end/pipelinerun.yaml -n test
ins-carts:
	kubectl create  -f ./carts/piperes.yaml -f ./carts/tasks/task.yaml \
	-f ./carts/tasks/taskrun.yaml -f ./carts/tasks/taskdeploy.yaml -f ./carts/tasks/taskdeployrun.yaml -f ./carts/tasks/pipeline.yaml \
	-f ./carts/tasks/pipelinerun.yaml -n test
delete-carts:
		kubectl delete  -f ./carts/piperes.yaml -f ./carts/tasks/task.yaml \
	-f ./carts/tasks/taskrun.yaml -f ./carts/tasks/taskdeploy.yaml -f ./carts/tasks/taskdeployrun.yaml -f ./carts/tasks/pipeline.yaml \
	-f ./carts/tasks/pipelinerun.yaml -n test
ins-order:
	kubectl create  -f ./orders/piperes.yaml -f ./orders/tasks/task.yaml \
	-f ./orders/tasks/taskrun.yaml -f ./orders/tasks/taskdeploy.yaml -f ./orders/tasks/taskdeployrun.yaml -f ./orders/tasks/pipeline.yaml \
	-f ./orders/tasks/pipelinerun.yaml -n test
delete-order:
	kubectl delete  -f ./orders/piperes.yaml -f ./orders/tasks/task.yaml \
	-f ./orders/tasks/taskrun.yaml -f ./orders/tasks/taskdeploy.yaml -f ./orders/tasks/taskdeployrun.yaml -f ./orders/tasks/pipeline.yaml \
	-f ./orders/tasks/pipelinerun.yaml -n test
ins-user:
	kubectl create  -f ./user/tasks/resource.yaml  -f ./user/tasks/task.yaml \
	-f ./user/tasks/task-dep.yaml -f ./user/tasks/pipeline.yaml -f ./user/tasks/pipelinerun.yaml    -n test
delete-user:
	kubectl delete  -f ./user/tasks/resource.yaml  -f ./user/tasks/task.yaml \
	-f ./user/tasks/task-dep.yaml -f ./user/tasks/pipeline.yaml -f ./user/tasks/pipelinerun.yaml -n test

ins-userdb:
	kubectl create  -f ./user/tasks/task-db/resource.yaml  -f ./user/tasks/task-db/task.yaml \
	-f ./user/tasks/task-db/task-dep.yaml -f ./user/tasks/task-db/pipeline.yaml -f ./user/tasks/task-db/pipelinerun.yaml    -n test
delete-userdb:
	kubectl delete  -f ./user/tasks/task-db/resource.yaml  -f ./user/tasks/task-db/task.yaml \
	-f ./user/tasks/task-db/task-dep.yaml -f ./user/tasks/task-db/pipeline.yaml -f ./user/tasks/task-db/pipelinerun.yaml -n test
ins-shipping:
	kubectl create  -f ./shipping/piperes.yaml \
	-f ./shipping/tasks/taskbuild.yaml -f ./shipping/tasks/taskbuildrun.yaml -f ./shipping/tasks/taskdeploy.yaml \
	-f ./shipping/tasks/taskdeployrun.yaml -f ./shipping/tasks/pipeline.yaml -f ./shipping/tasks/pipelinerun.yaml -n test
delete-shipping:
	kubectl delete  -f ./shipping/piperes.yaml \
	-f ./shipping/tasks/taskbuild.yaml -f ./shipping/tasks/taskbuildrun.yaml -f ./shipping/tasks/taskdeploy.yaml \
	-f ./shipping/tasks/taskdeployrun.yaml -f ./shipping/tasks/pipeline.yaml -f ./shipping/tasks/pipelinerun.yaml -n test
ins-catlog:
	kubectl create -f ./catalogue/tasks/resource.yaml -f ./catalogue/tasks/task.yaml -f ./catalogue/tasks/task-dep.yaml -f ./catalogue/tasks/pipeline.yaml \
	-f ./catalogue/tasks/pipelinerun.yaml -n test
del-catlog:
	kubectl delete -f ./catalogue/tasks/resource.yaml -f ./catalogue/tasks/task.yaml -f ./catalogue/tasks/task-dep.yaml -f ./catalogue/tasks/pipeline.yaml \
	-f ./catalogue/tasks/pipelinerun.yaml -n test
ins-catlogdb:
	kubectl create -f ./catalogue/tasks/task-db/resource.yaml -f ./catalogue/tasks/task-db/task.yaml -f ./catalogue/tasks/task-db/task-dep.yaml -f ./catalogue/tasks/task-db/pipeline.yaml \
	-f ./catalogue/tasks/task-db/pipelinerun.yaml -n test
del-catlogdb:
	kubectl delete -f ./catalogue/tasks/task-db/resource.yaml -f ./catalogue/tasks/task-db/task.yaml -f ./catalogue/tasks/task-db/task-dep.yaml -f ./catalogue/tasks/task-db/pipeline.yaml \
	-f ./catalogue/tasks/task-db/pipelinerun.yaml -n test




