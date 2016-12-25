import React, { Component } from "react";
import Relay from "react-relay";
import CommentContainer from "./comment";

class Timeline extends Component {
  render() {
    var timeline = this.props.timeline;

    return (
      <div className="timeline-container">
        <div className="timeline-header">
          <strong>Timeline</strong>
        </div>
        {timeline.comments.edges.map(
          (edge, index) => <CommentContainer key={index} comment={edge.node} />
        )}
      </div>
    );
  }
}

let TimelineContainer = Relay.createContainer(Timeline, {
  fragments: {
    timeline: () => Relay.QL`
      fragment on Timeline {
        comments(first: 5) {
          edges {
            node {
              ${CommentContainer.getFragment('comment')}
            }
          }
        }
      }
    `
  }
});

export default TimelineContainer
