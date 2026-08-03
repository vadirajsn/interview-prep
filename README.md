# InterviewForge — DSA Interview Prep

A fully animated, visual DSA interview preparation platform built with vanilla HTML, CSS, and JavaScript.

## 🚀 Live Features

- **8 Algorithm Animations** — Two Pointers, Linked List Reversal, Stacks, Binary Search, Tree Traversal (DFS + BFS), Graph Traversal (BFS + DFS), Merge Sort, Hash Map / Two Sum
- **Step-by-step playback** — pause, rewind, step forward/back with keyboard shortcuts
- **Deep-linking** — link directly to any topic via `?topic=<id>`
- **Rich home page** — animated particle network, scrolling ticker, live two-pointer demo

## 📂 Files

| File | Description |
|---|---|
| `index.html` | Animated home page |
| `dsa-interview-animator.html` | Full DSA pattern player |
| `Dockerfile` | Railway / Docker deployment |
| `nginx.conf` | Nginx static server config |

## 🔗 Deep Link Topic IDs

| Topic | URL param |
|---|---|
| Two Pointers | `?topic=twoPointer` |
| Linked List Reversal | `?topic=linkedList` |
| Valid Parentheses (Stack) | `?topic=stack` |
| Binary Search | `?topic=binarySearch` |
| Binary Tree Traversal | `?topic=tree` |
| Graph BFS / DFS | `?topic=graph` |
| Merge Sort | `?topic=mergeSort` |
| Two Sum (Hash Map) | `?topic=hashMap` |

## 🐳 Deploy on Railway

1. Push this repo to GitHub
2. In [Railway](https://railway.app), create a new project → **Deploy from GitHub repo**
3. Railway auto-detects the `Dockerfile` and builds + deploys
4. No environment variables required

## 🏃 Run Locally

```bash
# With Docker
docker build -t interview-forge .
docker run -e PORT=8080 -p 8080:8080 interview-forge
# Open http://localhost:8080

# Or just open index.html directly in your browser
open index.html
```
