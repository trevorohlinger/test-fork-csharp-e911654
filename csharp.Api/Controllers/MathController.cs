using Microsoft.AspNetCore.Mvc;

namespace csharp.Api.Controllers;

[ApiController]
[Route("[controller]")]
public class MathController
{
    [HttpGet]
    public int GetSumOfTwoNumbers(int firstNumber, int secondNumber)
    {
        var math = new Math();
        return math.Sum(firstNumber, secondNumber);
    }
}