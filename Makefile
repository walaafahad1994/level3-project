
secret-dockerhup:
	docker login
	kubectl create secret generic walaa-secret \
	 --from-file=.dockerconfigjson=/home/ubuntu/.docker/config.json \
 	--type=kubernetes.io/dockerconfigjson -n test

ins-front-end:
	kubectl create -f ./front-end/sa.yaml -f  ./front-end/role-bind.yaml -f ./front-end/piperes.yaml -f ./front-end/task1front.yaml \
	-f ./front-end/task1frontend.yaml -f ./front-end/taskdepoy.yaml -f ./front-end/taskdeprun.yaml -f ./front-end/pipeline.yaml \
	-f ./front-end/pipelinerun.yaml -n test
delete-front-end:
	kubectl delete -f ./front-end/sa.yaml -f  ./front-end/role-bind.yaml -f ./front-end/piperes.yaml -f ./front-end/task1front.yaml \
	-f ./front-end/task1frontend.yaml -f ./front-end/taskdepoy.yaml -f ./front-end/taskdeprun.yaml -f ./front-end/pipeline.yaml \
	-f ./front-end/pipelinerun.yaml -n test
ins-carts:
	kubectl create -f ./carts/serviceAccount.yaml -f ./carts/role-bind.yaml -f ./carts/piperes.yaml -f ./carts/tasks/task.yaml \
	-f ./carts/tasks/taskrun.yaml -f ./carts/tasks/taskdeploy.yaml -f ./carts/tasks/taskdeployrun.yaml -f ./carts/tasks/pipeline.yaml \
	-f ./carts/tasks/pipelinerun.yaml -n test
carts-delete:
		kubectl delete -f ./carts/serviceAccount.yaml -f ./carts/role-bind.yaml -f ./carts/piperes.yaml -f ./carts/tasks/task.yaml \
	-f ./carts/tasks/taskrun.yaml -f ./carts/tasks/taskdeploy.yaml -f ./carts/tasks/taskdeployrun.yaml -f ./carts/tasks/pipeline.yaml \
	-f ./carts/tasks/pipelinerun.yaml -n test
ins-order:
	kubectl create -f ./orders/serviceAccount.yaml -f ./orders/role-bind.yaml -f ./orders/piperes.yaml -f ./orders/tasks/task.yaml \
	-f ./orders/tasks/taskrun.yaml -f ./orders/tasks/taskdeploy.yaml -f ./orders/tasks/taskdeployrun.yaml -f ./orders/tasks/pipeline.yaml \
	-f ./orders/tasks/pipelinerun.yaml -n test
delete-order:
	kubectl delete -f ./orders/serviceAccount.yaml -f ./orders/role-bind.yaml -f ./orders/piperes.yaml -f ./orders/tasks/task.yaml \
	-f ./orders/tasks/taskrun.yaml -f ./orders/tasks/taskdeploy.yaml -f ./orders/tasks/taskdeployrun.yaml -f ./orders/tasks/pipeline.yaml \
	-f ./orders/tasks/pipelinerun.yaml -n test
ins-user:
	kubectl create -f ./user/sa.yaml -f ./user/role-bind.yaml -f ./user/piperes.yaml -f ./user/tasks/task.yaml \
	-f ./user/tasks/taskrun.yaml -f ./user/tasks/taskdb.yaml -f ./user/tasks/taskdbrun.yaml  -f ./user/tasks/taskdeploy.yaml 	-f ./user/tasks/taskrun.yaml -f ./user/tasks/taskdeploy.yaml -f ./user/tasks/taskdeployrun.yaml -f  ./user/tasks/taskdbdeploy.yaml -f -f  ./user/tasks/taskdbdeployrun.yaml-f ./user/tasks/pipeline.yaml \
	-f ./user/tasks/pipelinerun.yaml -n test
delete-user:
	kubectl create -f ./user/sa.yaml -f ./user/role-bind.yaml -f ./user/piperes.yaml -f ./user/tasks/task.yaml \
	-f ./user/tasks/taskrun.yaml -f ./user/tasks/taskdb.yaml -f ./user/tasks/taskdbrun.yaml  -f ./user/tasks/taskdeploy.yaml 	-f ./user/tasks/taskrun.yaml -f ./user/tasks/taskdeploy.yaml -f ./user/tasks/taskdeployrun.yaml -f  ./user/tasks/taskdbdeploy.yaml -f -f  ./user/tasks/taskdbdeployrun.yaml-f ./user/tasks/pipeline.yaml \
	-f ./user/tasks/pipelinerun.yaml -n test








