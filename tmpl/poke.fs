(* File: $FILE
 * Author: $AUTHOR
 *)

namespace NAMESPACE

open System

#if INTERACTIVE
#endif

[<EntryPoint>]
let main args =
    printfn "Arguments passed to function : %A" args
	0
