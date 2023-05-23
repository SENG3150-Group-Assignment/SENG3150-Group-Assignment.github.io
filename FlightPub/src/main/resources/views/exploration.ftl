<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Exploration</title>
  <#include "components/imports.ftl">
</head>

<body>
  <#include "components/navbar.ftl">
    <div id="exploration-main" class="p-5">
      <form action="advanced_search.html">
        <div class="card bg-dark text-white" style="border-radius: 1rem">
          <div class="card-body py-4 px-5">
            <div class="row">
              <div class="col-md-3">
                <label for="temperature" class="form-label">Temperature</label>
                <select class="form-select" id="temperature">
                  <option value="hot">Hot</option>
                  <option value="temperate">Temperate</option>
                  <option value="cold">Cold</option>
                  <option value="freezing">Freezing</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="terrain" class="form-label">Terrain</label>
                <select class="form-select" id="terrain">
                  <option value="seaside">Seaside</option>
                  <option value="moutainous">Moutainous</option>
                  <option value="hilly">Hilly</option>
                  <option value="flat">Flat</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="weather" class="form-label">Weather</label>
                <select class="form-select" id="weather">
                  <option value="sunny">Sunny</option>
                  <option value="overcast">Overcast</option>
                  <option value="rainy">Rainy</option>
                  <option value="pouring">Pouring</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="attraction" class="form-label">Attractions</label>
                <select class="form-select" id="attraction">
                  <option value="ancient">Ancient</option>
                  <option value="man-made">Man-Made</option>
                  <option value="natural">Natural</option>
                  <option value="phenomenon">Phenomenon</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="row m-3">
          <div class="col-md-2 offset-5 text-center">
            <button
              type="button"
              class="btn btn-outline-dark btn-lg px-5 py-2"
              data-bs-toggle="collapse"
              href="#search-results">
              Search
            </button>
          </div>
        </div>
        <div id="search-results" class="collapse green-background p-4 rounded">
          <div class="row mt-4">
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt="" />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt="" />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt="" />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="card bg-light text-dark">
                <div class="card-body text-center">
                  <a class="link" href="destination.html">
                    <img
                      src="Images/opera-house.png"
                      class="rounded img-fluid"
                      alt="" />
                    Holiday Placeholder
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
</body>

</html>