import Relay from "react-relay";
import TimelineContainer from "../components/timeline";

let TimelineRoute = {
  name: "TimelineRoute",
  params: {},
  queries: {
    timeline: () => Relay.QL`
      query {
        timeline(id: "gid://help-me-react/Timeline/1")
      }
    `
  }
}

export default TimelineRoute
