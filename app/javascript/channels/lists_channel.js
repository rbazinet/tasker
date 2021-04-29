import consumer from "./consumer"
import CableReady from "cable_ready";

consumer.subscriptions.create("ListsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("In received data");
    console.log(data.cableReady);
    if (data.cableReady) {
      console.log(data);
      CableReady.perform(data.operations);
    }
  }
});
