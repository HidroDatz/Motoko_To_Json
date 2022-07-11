export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'objPrint' : IDL.Func([], [], ['oneway']),
    'print' : IDL.Func([IDL.Text], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
