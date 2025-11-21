import Mathlib

open Function

theorem continuous_inverse_of_continuous_bijective_of_t2 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y] {f : X → Y} (hf : Continuous f) (hbij : Bijective f) : Continuous (invFun f) := by sorry