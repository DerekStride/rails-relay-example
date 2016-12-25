import Relay from "react-relay";

// class CommentRoute extends Relay.Route {
//   static routeName = 'CommentRoute';
//   static params = {
//     commentId: { required: true }
//   };
//
//   static queries = {
//     comment: () => Relay.QL`
//       query {
//         node(id: $commentId)
//       }
//     `
//   };
// }

class CommentRoute {
  constructor(commentId) {
    this.name = 'CommentRoute';
    this.params = {
      commentId: commentId
    };
    this.queries = {
      comment: () => Relay.QL`
        query {
          node(id: $commentId)
        }
      `
    };
  }
}

export default CommentRoute
