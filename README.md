# MeTube on Fly.io

Ready-to-deploy Fly.io configuration for MeTube.

## Features

- Persistent downloads storage
- HTTPS enabled automatically
- Optimized for Fly.io
- Uses official upstream MeTube image
- Asia/Singapore deployment region

## Requirements

- Fly.io account
- Fly CLI installed

## Deploy

### 1. Login

```bash
fly auth login
```

### 2. Create app

```bash
fly apps create metube-fly
```

### 3. Create persistent volume

```bash
fly volumes create metube_data --size 10 --region sin
```

### 4. Deploy

```bash
fly deploy
```

## Access

After deployment:

https://metube-fly.fly.dev

## Optional Authentication

```bash
fly secrets set BASIC_AUTH_PASSWORD=yourpassword
```

Then add to fly.toml:

```toml
[env]
  BASIC_AUTH_USER = "admin"
```

## Useful Commands

### View logs

```bash
fly logs
```

### SSH into app

```bash
fly ssh console
```

### Restart app

```bash
fly apps restart metube-fly
```

## Upstream Project

https://github.com/alexta69/metube
