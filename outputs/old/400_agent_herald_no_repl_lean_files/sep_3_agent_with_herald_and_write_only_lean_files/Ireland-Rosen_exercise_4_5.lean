import Mathlib

open ZMod

/--
Exercise (Ireland–Rosen, 4.5).
Let p be a prime of the form 4*t+3. Show that a is a primitive root modulo p iff -a has order (p-1)/2.
This file records the statement; the proof is omitted.
-/

theorem Ireland_Rosen_exercise_4_5 {p : Nat} (hp : p.Prime) (hmod4 : p % 4 = 3) {a : (ZMod p)ˣ} :
  (OrderOf a = p - 1) ↔ (OrderOf (-a : (ZMod p)ˣ) = (p - 1) / 2) := by
  sorry
