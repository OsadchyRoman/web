<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="resources/css/style.css">
  <script type="text/javascript" src="/javascript/task.js"></script>
</head>
<body>
<table cols="2">
  <tr>
    <td>Результат работы :</td>
    <td>
      <%=request.getParameter("s") != null?"s="+request.getParameter("s") : "Введите параметр s в URL. Пример : dl.gsu.by/getOneParam.jsp&s=5"%>
    </td>
  </tr>
  <tr>
    <td>Исходный код :</td>
    <td>
      <iframe src="sources/getOneParam.jsp" frameborder="1" width="1000" height="400"></iframe>
    </td>
  </tr>
  <tr>
    <td></td>
    <td><button class="button-source"><a href="sources/getOneParam.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
  </tr>
  <tr>
    <td>Контрольные вопросы:</td>
    <td class="sizeTd">
      <p>Что такое URL?</p>
      <p>Что такое request?</p>
      <p>В чем отличие request и response?</p>
      <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
      <div id="hint1" style="display: none;">
        <strong>Что такое URL?</strong>
        <p>URL - это абревиатура, которая скрывает термин Universal Resource Locator. В переводе - универсальный указатель местоположения.
          По нему выходят на сервер, который служит хранилищем для нужного ресурса</p>
        <strong>Что такое request?</strong>
        <p>
          Запрос, требующий обслуживания. Область видимости - запрос. Основные методы : getAttribute, getParameter, getParameterNames, getParameterValues.
          Таким образом, запрос request обеспечивает обращение к параметрам запроса через метод getParameter, типу запроса (GET, POST, HEAD, и т.д.),
          и входящим HTTP заголовкам (cookies, Referer и т.д.).
        </p>
        <strong>В чем отличие request и response?</strong>
        <p>request - запрос, требующий обслуживания. Область видимости - запрос.<br>
          response - ответ на запрос. Область видимости - страница.</p>
      </div>
      <a href="" onclick="showhide('hint2'); return false;">Теория</a><br><br>
      <div id="hint2" style="display: none;">
        <strong>Директивы JSP</strong>
        <p>
          Директивы обеспечивают глобальную информацию, касающихся конкретных запросов, направляемых в JSP, и предоставляют информацию, необходимую на стадии трансляции.
          Директивы всегда помещаются в начале JSP-страницы до всех остальных тегов, чтобы parser (анализатор) JSP при разборе текста в самом начале выделил глобальные инструкции.
          Таким, образом, JSP Engine (среда исполнения JSP), анализируя код, создает из JSP сервлет. Директивы представляют собой сообщения контейнеру JSP.
        </p>
        <p>
          Синтаксис директив JSP выглядит следующим образом: <strong>&lt;@ директива имяАтрибута="значение"%&gt;</strong>
        </p>
        <strong>Директива page</strong>
        <p>Директива page определяет свойства страницы JSP, которые воздействуют на транслятор. Порядок следования атрибутов в директиве page не имеет значения.
          Нарушение синтаксиса или наличие нераспознанных атрибутов приводит к ошибке трансляции.
        </p>
        <p>
          Примером директивы page может служить следующий код: <strong>&lt;@ page contentType="text/html;charset=UTF-8" language="java" %&gt;</strong>
        </p>
        <strong>Выражения JSP</strong>
        <p>
          Выражение в странице JSP - это исполняемое выражение, написанное на языке скрипта, указанного в объявлении language (как правило Java). Результат выражения JSP,
          имеющий обязательный тип String, направляется в стандартный поток вывода out с помощью текущего объекта JspWriter. Если результат выражения не может быть приведен к типу String,
          возникает либо ошибка трансляции, если проблема была выявлена на этапе трансляции, либо возбуждается исключение ClassCastException, если несоответствие было выявлено в процессе выполнения запроса.</p>
        <p>Выражение имеет следующий синтаксис: <strong>&lt;%= текст выражения %&gt;</strong></p>
      </div>
    </td>
  </tr>
</table>
</body>
</html>
