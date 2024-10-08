# abspfp
Расчет плана формирования поездов методом абсолютного (полного) перебора

[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/magdel/abspfp/blob/main/LICENSE.txt)
[![Hits-of-Code](https://hitsofcode.com/github/magdel/abspfp?branch=main&label=Hits-of-Code)](https://hitsofcode.com/github/magdel/abspfp/view?branch=main&label=Hits-of-Code)

## Idea

Для расчета лучшего варианта по критерию вагоночасы делается построение всех возможных вариантов вагонопотоков и их оценка.

![Построение графа вариантов](images/docs_graph.png)

Обход этого бинарного дерева ведется упорядоченно, сначала идет обход одной ветви (числа на стрелках обозначают порядок перехода
от варианта к варианту, числа в кружках показывают порядок рассмотрения вариантов), затем другой. Это позволяет дробить задачу в любом узле на две
практически равные части и решать их независимо от других частей. Применение параллельных вычислений с выпуском многоядерных процессоров позволило
задействовать все возможности современной вычислительной техники и получить от этого значительное ускорение расчетов.

Алгоритм построения такого упорядоченного графа выглядит следующим образом.

![Алгоритм](images/docs_algo.png)

## Usage

Запустите приложение и введите исходные данные.
Можно загрузить примеры данных для расчета из папки Projects

![Пример главного окна приложения](images/app_main_form.png)

После расчета получаем результат в графическом виде, его можно скопировать кликом правой кнопки мыши. Показатели можно экспортировать в Excel. 
![Результат расчета](images/app_main_form_results.png)

### Code

This is Delphi application with Assembler inline code compiled conditionally. 2x speed up when Assembler rewritten code is used. 
May be used as example of Assembler with Deplhi. Conditional ASMALGN is enabling usage of assembler code. 

Assembler code (and other Deplhi code) is for 32-bit environment.

To build application use Delphi CE 11.3. Open project file and then Build in Project.

### Releases

For direct downloads, check out [Releases](../../releases).

## Contributing

For simple bug reports and fixes, and feature requests, please simply use project's
[Issue Tracker](../../issues)


