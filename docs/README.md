# About

This repository contains build scripts for the _Archery Storage_. The Storage is deployed to
[http://archery.ntr1x.com](http://archery.ntr1x.com), you can see it in action there.
This page describes how to build and install it. Here you can read more about the whole project:
[https://ntr1x.github.io/](https://ntr1x.github.io/).

# Installation

Let's assume that you have a $PROJECT_DIR folder and want to build archery there.

#### Option 1 - Checkout & Run

Just checkout the `ntr1x-storage-launch` project and run it as spring-boot application:

``` bash
git clone git@github.com:ntr1x/ntr1x-storage-launch.git
cd ntr1x-storage-launch
mvn spring-boot:run -Drun.profiles=recreate,setup -P build
```

Last command will download all necessary _Storage_ modules from [http://maven.ntr1x.com/repository](http://maven.ntr1x.com/repository)
maven repository.

> The `-P build` option tells maven to use our public maven repository.
> It is configured in `pom.xml` file. `-Drun.profiles=recreate,setup`
> option tells app to recreate database from JPA models and fill
> the database with initial data.

#### Option 2 - Checkout & Build & Run

Checkout `ntr1x-storage-launch` and all the dependencies, build and install them to your local maven repository, then launch the app:

``` bash
cd $PROJECT_DIR/ntr1x-storage-core
git clone git@github.com:ntr1x/ntr1x-storage-core.git
mvn clean install

cd $PROJECT_DIR/ntr1x-storage-security
git clone git@github.com:ntr1x/ntr1x-storage-security.git
mvn clean install

cd $PROJECT_DIR/ntr1x-storage-uploads
git clone git@github.com:ntr1x/ntr1x-storage-uploads.git
mvn clean install

cd $PROJECT_DIR/ntr1x-storage-media
git clone git@github.com:ntr1x/ntr1x-storage-media.git
mvn clean install

cd $PROJECT_DIR/ntr1x-storage-archery
git clone git@github.com:ntr1x/ntr1x-storage-archery.git
mvn clean install

cd $PROJECT_DIR/ntr1x-storage-app
git clone git@github.com:ntr1x/ntr1x-storage-app.git
mvn clean install

cd $PROJECT_DIR
git clone git@github.com:ntr1x/ntr1x-storage-launch.git
mvn spring-boot:run
```

Last command will build and run the _Storage_ using your
local maven repository.

#### Option 3 - Checkout & Build & Deploy & Run

Each module can be built using the `mvn clean deploy` command.
It will try to upload module to our maven repository using `scp`.

> Most likely you do not have rights to upload to our maven
> repository, so the `mvn clean deploy` will fail. Setup your own
> maven repository first and modify the pom.xml.

# Launching

Suppose you are in the `$PROJECT_DIR/ntr1x-storage-launch` folder.

Run using local maven repository:

```bash
mvn spring-boot:run
```

Run using public maven repository:

```bash
mvn spring-boot:run -P build
```

Run using public maven repository and recreate the database:

```bash
mvn spring-boot:run -Drun.profiles=recreate -P build
```

Run using public maven repository, recreate the database and fill it with initial data:

```bash
mvn spring-boot:run -Drun.profiles=recreate,setup -P build
```

Run using public maven repository with production settings, recreate the database and fill it with initial data:

```bash
mvn spring-boot:run -Drun.profiles=prod,recreate,setup -P build
```


# Configuration

The configuration is located in `$PROJECT_DIR/ntr1x-storage-launch/config` folder.
You can modify any config or place additional one and reference
it using `-Drun.profiles` option.
