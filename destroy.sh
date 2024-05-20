#!/bin/bash

function destroy_instance() {
    cd terraform
    terraform destroy --auto-approve
}

destroy_instance