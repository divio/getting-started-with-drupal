# Getting Started with Drupal

[![Deploy to Divio](https://img.shields.io/badge/DEPLOY-TO%20DIVIO-DFFF67?logo=docker&logoColor=white&labelColor=333333)](https://control.divio.com/app/new/?template_url=https://github.com/divio/getting-started-with-drupal/archive/refs/heads/main.zip)

Welcome to our QuickStart template – your portal to swift application development and seamless local testing. Whether you're delving into Drupal for the first time or optimizing your workflow, our template, based on Drupal's [recommended-project](https://github.com/drupal/recommended-project), has got you covered.

## Cloud Setup

Create a [Divio Account](https://control.divio.com/) and choose **Drupal** from the template selection when creating a new application. Alternatively, click the `Deploy to Divio` button above and follow the app creation wizard. Finally, deploy your app to the `test` or `live` environment.

After the deployment, copy the `DATABASE PASSWORD` from the logs of the application. You will need to add the password manually during the installation process. The rest will be pre-filled. Finally, if you get a "Gateway timeout error" after the "Configure site" step, navigate back to the root of the application and everything should be working.

For in-depth details about Divio Cloud, refer to the [Divio documentation](https://docs.divio.com/introduction/).

## Local Setup

Install the [Divio CLI](https://github.com/divio/divio-cli) to set up your app locally.

Alternatively, build this app locally using Docker:

1. Ensure [Docker](https://docs.docker.com/get-docker/) is installed and running.
2. Clone this repository locally.
3. Build the app with `docker compose build`.
4. Install dependencies using `docker compose run --rm web composer install`.
5. Run the app using `docker compose up`.
6. Open [http://localhost:8000]() to view your app.
