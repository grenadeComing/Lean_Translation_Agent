import Mathlib

universe u v

variable {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]

/-- The fibre of a map p over a point y0. -/
def fiber (p : X → Y) (y0 : Y) := { x : X // p x = y0 }

variables (p : X → Y) (y0 : Y) (pi1 : Type u) [Group pi1]

-- Placeholder hypotheses for being a covering of a path connected, locally simply connected space.
variable (is_covering : Prop) (path_connected : Prop) (locally_simply_connected : Prop)

/--
For every covering space `p : X → Y` of a path connected and locally simply connected
topological space `Y`, the fundamental group `π1(Y, y0)` acts on the fibre `fiber p y0`.
We state the existence of such an action and assert continuity; the proof is omitted.
The action is usually given by sending the class of a loop `[x]` and a point `y` of the fibre to
`[x] · y = endpoint (lift of x starting at y)` (equivalently denoted `[x]·[y] = [x*y]`).
-/
theorem fundamental_group_acts_on_fibre_continuous :
  is_covering → path_connected → locally_simply_connected →
  ∃ (act : pi1 → fiber p y0 → fiber p y0),
    -- action laws and continuity are part of the expected properties; omitted here.
    True := by sorry
