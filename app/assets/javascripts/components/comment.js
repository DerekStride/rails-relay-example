import React, { Component } from "react";
import Relay from "react-relay";

class Comment extends Component {
  render() {
    var comment = this.props.comment;

    return (
      <div className="card comment-box">
        <div className="comment-avatar">{comment.author.name.split(' ').map(e => e[0]).join('')}</div>
        <div className="comment-content">
          <div className="comment-header">
            <strong className="comment-author">{comment.author.name}</strong>
            <time className="comment-time">12:34am</time>
          </div>
          <div className="comment-body">{comment.body}</div>
        </div>
      </div>
    );
  }
}

let CommentContainer = Relay.createContainer(Comment, {
  fragments: {
    comment: () => Relay.QL`
      fragment on Comment {
        body
        author {
          name
        }
      }
    `
  }

});

export default CommentContainer
