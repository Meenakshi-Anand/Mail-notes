import { REMOVE_ERRORS}
       from '../actions/session_actions';
import {merge} from 'lodash';


const generalErrorsReducer = (state = [], action) => {
  Object.freeze(state);


  switch (action.type) {

    case REMOVE_ERRORS:
      return action.errors;

    default:
      return state;

  }
};

export default generalErrorsReducer;
