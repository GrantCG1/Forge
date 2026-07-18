using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers;

/// <summary>
/// Reports basic API liveness. This is a placeholder endpoint for the
/// application shell; it carries no business logic.
/// </summary>
[ApiController]
[Route("health")]
public class HealthController : ControllerBase
{
    [HttpGet]
    public IActionResult Get() => Ok(new { status = "ok" });
}
