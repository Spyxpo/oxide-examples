# Oxide Examples

A collection of example programs demonstrating the Oxide programming language.

## Getting Started

### Basics
| Example | Description | Difficulty |
|---------|-------------|------------|
| [hello-world](./hello-world) | The classic first program | Beginner |
| [variables-types](./variables-types) | Variable declaration and types | Beginner |
| [functions](./functions) | Function definitions and calls | Beginner |
| [control-flow](./control-flow) | Conditionals and loops | Beginner |
| [classes](./classes) | Object-oriented programming | Intermediate |

### Modern Features (v0.0.8+)
| Example | Description | Difficulty |
|---------|-------------|------------|
| [pipe-operator](./pipe-operator) | Function chaining with pipe operator | Beginner |
| [null-coalescing](./null-coalescing) | Default values with `??` operator | Beginner |
| [string-methods](./string-methods) | String manipulation functions | Beginner |
| [ranges-comprehensions](./ranges-comprehensions) | Range generation and list comprehensions | Intermediate |
| [functional-programming](./functional-programming) | Map, filter, reduce, and more | Intermediate |
| [resource-management](./resource-management) | Defer, with statements, type checking | Intermediate |

### GUI Development (OGRE)

| Example | Description | Difficulty |
|---------|-------------|------------|
| [ogre-hello-world](./ogre-hello-world) | Your first cross-platform GUI app | Beginner |
| [ogre-counter-app](./ogre-counter-app) | Flutter-style counter with state | Intermediate |
| [ogre-material-form](./ogre-material-form) | Material Design login form | Intermediate |
| [ogre-todo-app](./ogre-todo-app) | Complete todo list with filtering | Advanced |

Run OGRE apps on any platform:

```bash
ogre run              # Desktop
ogre run ios          # iOS Simulator
ogre run android      # Android Emulator
ogre run web          # Web browser
```

### Web Development
| Example | Description | Difficulty |
|---------|-------------|------------|
| [http-server](./http-server) | Basic HTTP server | Intermediate |
| [rest-api](./rest-api) | RESTful API with CRUD | Advanced |

### CLI Applications
| Example | Description | Difficulty |
|---------|-------------|------------|
| [cli-tool](./cli-tool) | Command-line utility | Intermediate |
| [file-watcher](./file-watcher) | File system monitoring | Intermediate |

### Systems Programming
| Example | Description | Difficulty |
|---------|-------------|------------|
| [concurrent-downloads](./concurrent-downloads) | Async/await concurrency | Advanced |
| [memory-pool](./memory-pool) | Custom memory allocator | Advanced |

### Data Processing
| Example | Description | Difficulty |
|---------|-------------|------------|
| [csv-processor](./csv-processor) | CSV parsing and analysis | Intermediate |
| [json-transformer](./json-transformer) | JSON transformation | Intermediate |

## Running Examples

Each example contains:
- `main.ox` - The Oxide source code
- `README.md` - Documentation and expected output
- Sample data files (where applicable)

To run an example:
```bash
cd <example-folder>
oxide run main.ox
```

## Learn More

- [Oxide Documentation](https://oxide-lang.dev/docs)
- [Language Examples](https://oxide-lang.dev/examples)
- [Community Forum](https://oxide-lang.dev/community)
