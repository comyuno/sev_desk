# APP ARCHITECTURE
**to structure code and define layer responsibilities**

## What is architecture for?
- separate between layers
    - UI / presentation layer (Widgets -> States -> Controllers)
    - business logic / application layer
    - repository / data layer
- define necessary classes/providers and their responsibilities and their way of communication
- clean and scalable code for multiple developers
- clean files organisation
- clean error handling
- clean testing

## Fetching data:
![fetching data](https://codewithandrea.com/articles/data-mutations-riverpod/images/fetching-data-detail.webp)
- widget class for loading/error/data state
- model class to represent data
- repository to pull data from network
- providers to provide data from repository via model to UI

## Data mutations:
![data mutations](https://codewithandrea.com/articles/data-mutations-riverpod/images/data-mutation-detail-realtime.webp)
- an event takes place
- data is passed to controller
- controller sets states to loading/error/data
- controller calls async method to pass data to repository
- repository converts data and writes async to data source
- data source gets response or exception
- controller manage the states (success/error)
- maybe navigate to different screen 

## Tech dependencies
- Riverpod 2.0
- Riverpod Generator 2.0
- Riverpod Lint
- Freezed, Equatable or Dart Data Class Generator