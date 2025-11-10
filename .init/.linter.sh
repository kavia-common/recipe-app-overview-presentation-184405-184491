#!/bin/bash
cd /home/kavia/workspace/code-generation/recipe-app-overview-presentation-184405-184491/slidev_frontend
npm run lint
ESLINT_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ]; then
  exit 1
fi

