
<a name="readme-top"></a>
<div align="center">
  <br />
  <h1 align="center">csharp</h1>
  <p align="center">
  <br />
  
  csharp

  <br />
  <br />
  </p>
</div>

### Built With

![image](https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=c-sharp&logoColor=white)
![image](https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=dotnet&logoColor=white)
![image](https://img.shields.io/badge/Swagger-85EA2D?style=for-the-badge&logo=Swagger&logoColor=white)

### C# Backend Template 

This is a template created for Backstage. This template using .Net 6.0 framework.

### Run Locally

Go to solution folder

```bash
  cd my-project
```

Build the solution

```bash
  dotnet build
```

Start the server

```bash
  cd my-project.Api
  dotnet run
```


### Running Tests

To run tests, run the following command

```bash
  cd my-project.Test
  dotnet test
```

### Run Locally using Docker

To run the api using a local docker, run the following command

```bash
  docker build -t my-project -f Dockerfile . 
  docker run --rm -p 5000:5000 -e ASPNETCORE_URLS=http://+:5000 my-project
```