(* Copyright (c) 2013-2015, IMDEA Software Institute.          *)
(* See ../LICENSE for authorship and licensing information     *)

(* Copyright (c) 2005, Regents of the University of California
 * All rights reserved.
 *
 * Author: Adam Chlipala
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 * - Neither the name of the University of California, Berkeley nor the names of
 *   its contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *)

(** Pretty-printing *)

open Format
open X86Types

type 'a printer = formatter -> 'a -> unit
(** The type of a method for printing an ['a] *)

val pp_int32 : int32 printer
val pp_int64 : int64 printer
val pp_addr : int64 printer

val pp_reg8 : reg8 printer
val pp_reg16 : reg16 printer
val pp_reg32 : reg32 printer
val pp_segment_reg : segment_reg printer
val pp_float_reg : float_reg printer
val pp_mmx_reg : mmx_reg printer
val pp_control_reg : control_reg printer
val pp_debug_reg : debug_reg printer
val pp_test_reg : test_reg printer

val pp_flag : flag printer
val pp_cc : cc printer
val pp_sse : sse printer
val pp_scale : scale printer

val pp_address : address printer
val pp_genop : 'a printer -> 'a genop printer
val pp_op32 : op32 printer
val pp_op8 : op8 printer
val pp_arith_op : arith_op printer

val pp_instr : instr printer
