package performance;

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._

class SpotifyGetAlbumSimulation extends Simulation{

  val featurePath = "com/spotify/api/features/albums/"

  val protocol = karateProtocol(
    "/albums" -> Nil
  )

  val getAlbum = scenario("Listar todos os albums").exec(karateFeature("classpath:"  + featurePath + "GET_album.feature"))

  setUp(
    getAlbum.inject(constantUsersPerSec(20).during(25)).protocols(protocol)
  )

}