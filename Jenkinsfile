node {
	checkout scm

	docker.image('ubuntu').inside {
		stage("build") {
			sh "cat /etc/release"
			sh "ls -l"
		}
	}
}
