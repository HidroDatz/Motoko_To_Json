import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'objPrint' : ActorMethod<[], undefined>,
  'print' : ActorMethod<[string], string>,
}
