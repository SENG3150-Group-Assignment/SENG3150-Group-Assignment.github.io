<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Advanced Search</title>
    
    <!-- CSS for datatable -->
    <link
    href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css"
    rel="stylesheet"
    crossorigin="anonymous"/>

    <#include "components/imports.ftl">

    <link
    rel="stylesheet"
    type="text/css"
    href="\styles\search-results.css" />
  </head>

  <body>
    <#include "components/navbar.ftl" />
    <div class="green-background px-5" id="main-body">
      <!------------------- Search Bar------------------->
      <section class="mx-5 pt-3" id="search">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <#include "components/advanced-search-bar-comp.ftl" />
        </div>
      </section>
      <!------------------- Search Results------------------->
      <section class="mx-5 py-5" id="search-results">
        <div class="container">
          <div class="row card">
            <div class="col-md-12">
              <h2>Search Results</h2>
              <table id="resultsTable" class="table table-md">
                <thead class="thead-dark">
                  <tr>
                    <th>Airline(s)</th>
                    <th>Start Date</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                    <th>Duration</th>
                    <th>Number of Stops</th>
                    <th>Price</th>
                  </tr>
                </thead>
                <tbody>
                    <#list results as trip>
                        <#include "components/search-result-comp.ftl">
                    </#list>
                </tbody>
              </table>
              <#--  Flight Value hidden form  -->
              <form style="display: none" action="/flight" method="POST" id="form">
                <input type="hidden" id="var1" name="var1" value="1"/>
                <input type="hidden" id="var2" name="var2" value="2"/>
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>
  <!-- Send results to js -->
  <script type="text/javascript">
    var searchResults = new Object();
    searchResults.trips = [];

    var temp = [];
    <#list results as trip>
      temp = [];
      <#list trip.flights as flight>
        temp.push(${flight.toJson()});
      </#list>
      searchResults.trips.push(temp);
    </#list>
  </script>
  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
  <script src="js/advanced_search.js"></script>
  </body>
</html>
